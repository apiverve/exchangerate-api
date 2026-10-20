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

        /// <summary>
        /// Optional past date (YYYY-MM-DD) to use that day's closing rates instead of live rates. History runs from 1999-01-04 for about 30 major currencies and covers every supported currency from March 2024. A day with no rates, such as a weekend or holiday, uses the last close before it.
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
