if(localStorage.getItem('theme') === 'alt') {
    document.body.classList.toggle('alt');
}

document.getElementById('theme').addEventListener('click', (e) => {
    document.body.classList.toggle('alt');
    localStorage.setItem('theme', document.body.classList.contains('alt') ? 'alt' : '');
});

var reposElem = document.getElementById('repos');

if(reposElem != null) {
    let response = await fetch('https://api.github.com/orgs/ARFP/repos?sort=full_name&direction=asc');
    response = await response.json();
    
    for(let repo of response)
    {
        let isSection = repo.name.startsWith('ABC') || repo.name.startsWith('DWWM') || repo.name.startsWith('CDA');
        if(!repo.archived && isSection && repo.name.length <= 12) {
            let li = document.createElement('li');
            li.innerHTML = '<a href="' + repo.svn_url + '">' + repo.name + '</a>';
            reposElem.appendChild(li);
        }
        
    }
    
    // console.log(response);
}