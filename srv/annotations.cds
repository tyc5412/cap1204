using demo from '../db/schema';

// HeaderInfo 负责详情页头部显示的主要信息（标题、实体名称）。

// LineItem 定义列表视图中显示的列。

// Facets 负责详情页中分区内容的组织，ReferenceFacet可以嵌套显示关联的实体（比如订单的明细）。

// UI Annotation 通过这些定义，支持Fiori Elements自动生成带有列表和详情页的UI。
annotate demo.Orders with @(UI: {
  HeaderInfo: {
    TypeName: 'Order',
    TypeNamePlural: 'Orders',
    Title: {Value: title}
  },
  LineItem: [
    {Value: title},
    // {Value: total}
  ],
  Facets: [
    {
      $Type: 'UI.ReferenceFacet',
      Label: 'Order Items',
      Target: 'demo.OrderItems'
    }
  ]
});

annotate demo.OrderItems with @(UI: {
  LineItem: [
    {Value: product},
    // {Value: quantity},
    {Value: price}
  ]
});