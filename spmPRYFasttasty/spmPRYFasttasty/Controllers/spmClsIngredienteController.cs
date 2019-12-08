using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using spmPRYFasttasty.Models;

namespace spmPRYFasttasty.Controllers
{
    public class spmClsIngredienteController : Controller
    {
        // GET: spmClsIngrediente
        private spmINGtIngrediente objIngrediente = new spmINGtIngrediente();

        // GET: spmClsPadecimientoSalud
        public ActionResult Index()
        {

            return View(objIngrediente.Listar());
        }

        [HttpPost]
        public ActionResult listado()
        {

            return Json(new { data= objIngrediente.ListarRecetas() });
        }

        //Accion AgregarEditar
        public ActionResult AgregarEditar(int id = 0)
        {
            return View(
                id == 0 ? new spmINGtIngrediente() //Agregar un nuevo objeto     (Si id es igual a cero es igual a SI entonces crea un objeto Usuario())
                : objIngrediente.Obtener(id) //DEvuelve un objeto
            );
        }

        //Accion Guardar
        [HttpPost]
        public ActionResult Guardar(spmINGtIngrediente objIngrediente, HttpPostedFileBase foto)
        {
            if (foto != null && foto.ContentLength > 0)
            {
                string fileName = Path.GetFileName(foto.FileName);
                string fileLocationString = "~/IngredientesFotos";
                string fileLocation = Path.Combine(Server.MapPath(fileLocationString), fileName);
                if (!Directory.Exists(Server.MapPath(fileLocationString))) Directory.CreateDirectory(Server.MapPath(fileLocationString));
                foto.SaveAs(fileLocation);
                objIngrediente.INGfoto = fileName;
            }
            objIngrediente.Guardar();
            return Redirect("~/spmClsIngrediente/Index");
        }

        //AccionEliminar
        public ActionResult Eliminar(int id)
        {
            objIngrediente.INGid = id;
            objIngrediente.Eliminar();
            return Redirect("~/spmClsIngrediente");
        }


    }
}