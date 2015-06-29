namespace UserProfiler.Api
{
    using System.Web;
    using System.Web.Http;
    using Common.WebApi;

    public class WebApiApplication : HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);

            DefaultWebApiConfig.Register("userprofiler", "0.1.0", GlobalConfiguration.Configuration);
        }
    }
}