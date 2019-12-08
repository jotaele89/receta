using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using spmPRYFasttasty.Models;
using spmPRYFasttasty.Filters;

namespace spmPRYFasttasty.Controllers
{
    [Autenticado]
    public class spmClsPerfilController : Controller
    {
        private spmUSUtUsuario usuario = new spmUSUtUsuario();
        // GET: spmClsPerfil
        public ActionResult spmfFrmPerfilIndex()
        {
            return View(usuario.Obtener(spmClsSessionHelper.GetUser()));
        }

        public JsonResult Actualizar(spmUSUtUsuario model, HttpPostedFileBase USUfoto)
        {
            var rm = new spmClsResponseModel();
            ModelState.Remove("USUid");
            ModelState.Remove("USUnombre");
            ModelState.Remove("USUapellido");
            ModelState.Remove("USUcorreo_electronico");
            ModelState.Remove("USUcontraseña");
            ModelState.Remove("USUfecha_registro");

            if (ModelState.IsValid)
            {
                rm = model.GuardarPerfil(USUfoto);
            }

            rm.href = Url.Content("/Home/Index");
            return Json(rm);
        }
    }
}