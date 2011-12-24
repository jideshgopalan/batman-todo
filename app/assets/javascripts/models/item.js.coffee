class Todo.Item extends Batman.Model
  @storageKey: 'items'
  @persist Batman.RailsStorage
  
  @encode 'content', 'id', 'done'
  
  # just some defaults, but these are optional
  done: false
  
  @belongsTo 'list'

