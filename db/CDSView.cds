namespace  sai.db;
using { sai.db.master, sai.db.transaction } from './datamodel';

context  CDSView  {

define view![POWorklist] as
  select from transaction.purchaseorder{
    key PO_ID as![PurchaseOrderId],
    PARTNER_GUID.BP_ID as![PartnerId],
    PARTNER_GUID.COMPANY_NAME as![CompanyName],
    GROSS_AMOUNT as![POGrossAmount],
    Currency.code as![POCurrencyCode],
    LIFECYCLE_STATUS as![POStatus],
    key Items.PO_ITEM_POS as![ItemPosition],
    Items.PRODUCT_GUID.PRODUCT_ID as![productId],
    Items.PRODUCT_GUID.DESCRIPTION as![ProductName],
    PARTNER_GUID.ADDRESS_GUID.CITY as![City],
    PARTNER_GUID.ADDRESS_GUID.COUNTRY as![Country],
    Items.GROSS_AMOUNT as![GrossAmount],
    Items.TAX_AMOUNT as![TaxAmount],
    // Items.QUANTITY as![Quantity],
    // Items.QUANTITY_UNIT as![QunatityUnit],
    Items.Currency.code as![CurrencyCode]
  };
    
}

