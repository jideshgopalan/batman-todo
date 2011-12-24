class Todo.List extends Batman.Model
  @storageKey: 'lists'
  @persist Batman.RailsStorage
  @encode 'title', 'id'
  
  @hasMany 'items'
  
  # Accessors
  @accessor 'item'
    get: -> @item ||= @buildItem(); @item
    set: (k, v) -> @item = v; @item
    
  buildItem: -> new Todo.Item(list_id: @get('id'))