using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using spmPRYFasttasty.Models;
using spmPRYFasttasty.Filters;
using System.IO;
//using Microsoft.Reporting.WebForms;

namespace spmPRYFasttasty.Controllers
{
    [Autenticado]
    public class spmClsUsuarioController : Controller
    {
        private spmUSUtUsuario objUsuario = new spmUSUtUsuario();

        // GET: spmClsUsuario
        public ActionResult spmfFrmUsuarioIndex()
        {
            return View(objUsuario.Listar());
        }

        //Accion Visualizar
        public ActionResult spmfFrmUsuarioVisualizar(int id)
        {
            return View(objUsuario.Obtener(id));
        }

        //Accion AgregarEditar
        public ActionResult spmfFrmUsuarioAgregarEditar(int id = 0)
        {
            return View(
                id == 0 ? new spmUSUtUsuario() //Agregar un nuevo objeto     (Si id es igual a cero es igual a SI entonces crea un objeto Usuario())
                : objUsuario.Obtener(id) //DEvuelve un objeto
            );
        }

        //Accion Guardar
        [HttpPost]
        public ActionResult spmfFrmUsuarioGuardar(spmUSUtUsuario objUsuario, HttpPostedFileBase USUfoto)
        {
            if (USUfoto != null && USUfoto.ContentLength > 0)
            {
                string fileName = Path.GetFileName(USUfoto.FileName);
                string fileLocationString = "~/Archivos";
                string fileLocation = Path.Combine(Server.MapPath(fileLocationString), fileName);
                if (!Directory.Exists(Server.MapPath(fileLocationString))) Directory.CreateDirectory(Server.MapPath(fileLocationString));
                USUfoto.SaveAs(fileLocation);
                objUsuario.USUfoto = fileName;
            }
            objUsuario.Guardar();
            return Redirect("~/spmClsUsuario/spmfFrmUsuarioIndex");
        }

        //AccionEliminar
        public ActionResult spmfFrmUsuarioEliminar(int id)
        {
            objUsuario.USUid = id;
            objUsuario.Eliminar();
            return Redirect("~/spmClsUsuario/spmfFrmUsuarioIndex");
        }
    }
}