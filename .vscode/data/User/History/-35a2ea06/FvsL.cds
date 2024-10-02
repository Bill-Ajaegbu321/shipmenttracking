using { shippingregister.db  } from '../db/schema.cds';

@path : '/service/shipmenttrackingService'
service shipmenttrackingService
{
     // Expose the TrackingRecord entity
    entity TrackingRecords as projection on TrackingRecord;


    // Expose the Vendor entity
    entity Vendors as projection on sr.Vendor;

    // Expose the FreightTypes entity
    entity FreightTypes as projection on sr.FreightTypes;

    // Expose the ShipmentMethods entity
    entity ShipmentMethods as projection on sr.ShipmentMethods;

    // Expose the Containers entity
    entity Containers as projection on sr.Containers;

    // Expose the Invoices entity
    entity Invoices as projection on sr.Invoices;

    // Expose the FreightInvoice entity
    entity FreightInvoices as projection on sr.FreightInvoice;

    // Expose the Port entity
    entity Ports as projection on sr.Port;
}

