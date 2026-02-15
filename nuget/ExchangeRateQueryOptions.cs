using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ExchangeRate
{
    /// <summary>
    /// Query options for the Exchange Rate API
    /// </summary>
    public class ExchangeRateQueryOptions
    {
        /// <summary>
        /// The first currency you want to get the exchange rate for
        /// </summary>
        [JsonProperty("currency1")]
        public string Currency1 { get; set; }

        /// <summary>
        /// The second currency you want to get the exchange rate for
        /// </summary>
        [JsonProperty("currency2")]
        public string Currency2 { get; set; }
    }
}
