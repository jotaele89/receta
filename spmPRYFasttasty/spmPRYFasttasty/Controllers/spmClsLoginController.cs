using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using spmPRYFasttasty.Models;
using spmPRYFasttasty.Filters;

namespace spmPRYFasttasty.Controllers
{
    public class spmClsLoginController : Controller
    {
        private spmUSUtUsuario usuario = new spmUSUtUsuario();
        // GET: Login

        [NoLogin]
        // GET: spmClsLogin
        public ActionResult spmfFrmLoginIndex()
        {
            return View();
        }

        public JsonResult Validar(string Usuario, string Password)
        {
            var rm = usuario.ValidarLogin(Usuario, Password);

            if (rm.response)
            {
                rm.href = Url.Content("~/Home/Index");
            }
            return Json(rm);
        }

        public ActionResult Logout()
        {
            spmClsSessionHelper.DestroyUserSession();
            return Redirect("~/spmClsLogin/spmfFrmLoginIndex");
        }

        //Accion Registrar
        public ActionResult spmfFrmLoginRegistrar(int id = 0)
        {
            return View(
                id == 0 ? new spmUSUtUsuario() //Agregar un nuevo objeto     (Si id es igual a cero es igual a SI entonces crea un objeto Usuario())
                : usuario.Obtener(id) //DEvuelve un objeto
            );
        }
    }
}