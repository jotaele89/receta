using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using spmPRYFasttasty.Models;
using System.IO;
namespace spmPRYFasttasty.Controllers
{
    public class spmClsRecetaController : Controller
    {
        private spmRINpReceta_Ingrediente objRecetaIngre = new spmRINpReceta_Ingrediente();
        private spmINGtIngrediente objIngrediente = new spmINGtIngrediente();

        private spmRECpReceta objReceta = new spmRECpReceta();
        private spmPADtPadecimiento_Salud objSalud = new spmPADtPadecimiento_Salud();
        private spmUSUtUsuario objUsuario = new spmUSUtUsuario();
        // GET: spmClsReceta
       
        public ActionResult FrmRecetaPrincipal()
        {
            return View(objReceta.Listar());
        }

        public ActionResult FrmRecetaAgregarEditar(int id = 0)
        {
            ViewBag.spmRECpReceta = objReceta.Listar();
            ViewBag.spmPADtPadecimiento_Salud = objSalud.Listar();
            ViewBag.spmUSUtUsuario = objUsuario.Listar();
            return View(

                 id == 0 ? new spmRECpReceta()
                 : objReceta.Obtener(id)
                 );
        }
        public ActionResult RecetaIngrediente(int id = 0)
        {
            ViewBag.spmRECpReceta = objReceta.Listar();
            ViewBag.spmRINpReceta_Ingrediente = objRecetaIngre.Listar();
            ViewBag.spmINGtIngrediente = objIngrediente.Listar();
            return View(
                id == 0 ? new spmRINpReceta_Ingrediente()
                : objRecetaIngre.Obtener(id)
                );
        }
        public ActionResult FrmRecetaIngrediente(int id = 0)
        {
            ViewBag.spmRECpReceta = objReceta.Listar();
            ViewBag.spmRINpReceta_Ingrediente = objRecetaIngre.Listar();
            ViewBag.spmINGtIngrediente = objIngrediente.Listar();
            return View(
                id == 0 ? new spmRINpReceta_Ingrediente()
                : objRecetaIngre.Obtener(id)
                );
        }

        public ActionResult GuardarREC(spmRINpReceta_Ingrediente objRecetaIngre)
        {

            if (ModelState.IsValid)
            {
                objRecetaIngre.Guardar();
                return Redirect("~/spmClsReceta/FrmRecetaIngrediente");
            }
            else
            {
                return View("~/spmClsReceta/FrmRecetaIngrediente");

            }
        }

        //Accion Guardar
        [HttpPost]
        public ActionResult Guardar(spmRECpReceta objReceta, HttpPostedFileBase RECfoto)
        {
            if (RECfoto != null && RECfoto.ContentLength > 0)
            {
                string fileName = Path.GetFileName(RECfoto.FileName);
                string fileLocationString = "~/Imagenes/Recetas";
                string fileLocation = Path.Combine(Server.MapPath(fileLocationString), fileName);
                if (!Directory.Exists(Server.MapPath(fileLocationString))) Directory.CreateDirectory(Server.MapPath(fileLocationString));
                RECfoto.SaveAs(fileLocation);
                objReceta.RECfoto = fileName;
            }
            objReceta.Guardar();
            return Redirect("~/spmClsReceta/FrmRecetaPrincipal");
        }
        

        //AccionEliminar
        public ActionResult EliminarREC(int id)
        {
            objRecetaIngre.RINid = id;
            objRecetaIngre.Eliminar();
            return Redirect("~/spmClsReceta/FrmRecetaIngrediente");
        }
        //AccionEliminar
        public ActionResult Eliminar(int id)
        {
            objReceta.RECid = id;
            objReceta.Eliminar();
            return Redirect("~/spmClsReceta/FrmRecetaPrincipal");
        }
    }
}