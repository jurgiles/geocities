@PocketSection = React.createClass
  displayName: 'PocketSection'
  getInitialState: ->
    {pocket_article: null, error: null}

  componentDidMount: ->
    @fetchPocketArticle({})

  fetchPocketArticle: (data) ->
    $.ajax
      url: 'pocket_content'
      dataType: 'json'
      data: data
    .done @fetchPocketArticleDone
    .error @fetchPocketArticleError

  fetchPocketArticleDone: (data, status, xhr)->
    @setState
      pocket_article: data

  fetchPocketArticleError: (xhr, status, error)->
    @setState
      error: true

  render: ->
    if @state.error
      <div> Johny's Pocket feed is being stubborn. </div>
    else if @state.pocket_article
      <div><a href={@state.pocket_article.given_url} target='_blank'>{@state.pocket_article.given_title}</a> from Pocket</div>
    else
      <div> Grabbing latest addition to Pocket...</div>
