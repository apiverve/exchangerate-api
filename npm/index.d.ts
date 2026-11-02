declare module '@apiverve/exchangerate' {
  export interface exchangerateOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface exchangerateResponse {
    status: string;
    error: string | null;
    data: ExchangeRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ExchangeRateData {
      currency1:     null | string;
      currency2:     null | string;
      exchangeRate:  null | string;
      inverseRate:   null | string;
      date:          Date | null;
      lastUpdated:   Date | null;
      currency1Name: null | string;
      currency2Name: null | string;
      change1D:      number | null;
      change7D:      number | null;
      change30D:     number | null;
      change1Y:      number | null;
      high30D:       number | null;
      low30D:        number | null;
      average30D:    number | null;
      volatility30D: number | null;
      history:       History[];
      hourly:        Hourly[];
  }
  
  interface History {
      date: Date | null;
      rate: number | null;
  }
  
  interface Hourly {
      hour:      number | null;
      rate:      number | null;
      timestamp: Date | null;
  }

  export default class exchangerateWrapper {
    constructor(options: exchangerateOptions);

    execute(callback: (error: any, data: exchangerateResponse | null) => void): Promise<exchangerateResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: exchangerateResponse | null) => void): Promise<exchangerateResponse>;
    execute(query?: Record<string, any>): Promise<exchangerateResponse>;
  }
}
