using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using spmPRYFasttasty.Models;
using System.Web.Mvc;

namespace spmPRYFasttasty.Filters
{
    // Si no estamos logeado, regresamos al login
    public class AutenticadoAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            if (!spmClsSessionHelper.ExistUserInSession())
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                {
                    controller = "spmClsLogin",
                    action = "spmfFrmLoginIndex"
                }));
            }
        }
    }

    // Si estamos logeado ya no podemos acceder a la página de Login
    public class NoLoginAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            if (spmClsSessionHelper.ExistUserInSession())
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                {
                    controller = "spmClsUsuario",
                    action = "spmfFrmUsuarioIndex"
                }));
            }
        }
    }

}