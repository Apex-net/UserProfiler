namespace UserProfiler.Api.Controllers
{
    using System.Collections.Generic;
    using Common.Controllers.Api;

    public class ProfilesController : BaseApiController
    {
        // GET: api/Profiles
        public IEnumerable<string> Get(string userId)
        {
            return new[]
            {
                "value1", 
                "value2"
            };
        }
    }
}