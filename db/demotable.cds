namespace sai.db;

entity orders{
  key id        : Integer64;
  customername  : String(120);
  contactperson : String(64);
  grossamount   : Decimal(10,2);
  currency      : String(4) not null;
}