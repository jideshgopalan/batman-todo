class Todo.ListsController extends Batman.Controller
  index: (params) ->
    @set 'list', new Todo.List()
    @form = @render()
    
  show: (params) ->
     Todo.List.find params.id, (err, list) =>
      @set('list', list)
      @set 'item', new Todo.Item()
    
  create: (params) ->
    @get('list').save (err) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
         @set 'list', new Todo.List()
        
  update: (params) ->
    
  destroy: (params) ->
  
  new: (params) ->
    @set 'list', new Todo.List()
    @form = @render()    

  create_item: (params) ->
    item = @get('list.item')
    item.save (err,item) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        list = @get('list')
        list.set('item', list.buildItem())
  
