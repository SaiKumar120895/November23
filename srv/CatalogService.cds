using { sai.db } from '../db/datamodel';

service CatalogService {

   entity BusinessPartnerSet as projection on db.master.businesspartner;

}