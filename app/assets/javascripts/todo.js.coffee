window.Todo = class Todo extends Batman.App

  # @root 'controller#all'
  # @route '/controller/:id', 'controller#show', resource: 'model', action: 'show'
  @root 'lists#index'
  @resources 'lists', ->
    @resources 'items'
 
  
  Batman.View::prefix = 'assets/views'
   
  @on 'run', ->
    console?.log "Running ...."

  @on 'ready', ->
    console?.log "Todo ready for use."

  @flash: Batman()
  @flash.accessor
    get: (key) -> @[key]
    set: (key, value) ->
      @[key] = value
      if value isnt ''
        setTimeout =>
          @set(key, '')
        , 2000
      value

  @flashSuccess: (message) -> @set 'flash.success', message
  @flashError: (message) ->  @set 'flash.error', message
