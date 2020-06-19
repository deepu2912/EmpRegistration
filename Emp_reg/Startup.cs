using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Emp_reg.Startup))]
namespace Emp_reg
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            //ConfigureAuth(app);
        }
    }
}
