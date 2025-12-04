using demo as db from '../db/schema';

service PurchaseService {
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}
