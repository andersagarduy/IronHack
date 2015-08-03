function fileactions(err, content)
{
   if (err)
   {
       throw err;
   }
   var episodes = JSON.parse(content);

   var newEpisodes = order(episodes)
   var newEpisodes = filterEpisodes(newEpisodes)

   for (var i = 0; i < newEpisodes.length; i += 1 )
   {
        console.log("Title: " + newEpisodes[i].title + "#: " + newEpisodes[i].episode_number);
        console.log(newEpisodes[i].description);
        console.log("Rating: " + newEpisodes[i].rating + " " + stars(newEpisodes[i].rating));
   }

}


function stars(rating)
{
    var round = Math.floor(rating);

    var stars = "";

    for (var i = 0; i < round; i += 1) 
    {
        stars += "*";
    }

    return stars;
}

function order(episodes)
{
    var newEpisodes = episodes.sort(function(a, b)
    {
         return a.episode_number-b.episode_number;
     });

     return newEpisodes
}

function filterEpisodes(episodes)
{
    var newEpisodes = episodes.filter(function(episode)
    {
        return (episode.rating <= 8.5);
    });

    return newEpisodes;

}

module.exports = fileactions