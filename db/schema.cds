namespace demo;

entity Orders {
    key ID    : UUID;
        title : String(200);
        total : Decimal(16, 2);
        //   items  : Composition of many OrderItems on items.order = $self;
        items : Composition of many OrderItems
                    on items.order = $self;
}

entity OrderItems {
    key ID       : UUID;
        // order    : Association to Orders;
        order    : Association to Orders;
        product  : String(100);
        quantity : Integer;
        price    : Decimal(16, 2);
}
