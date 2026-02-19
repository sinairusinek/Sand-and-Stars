document.addEventListener("pb-highlight-on", (event) => {
    if (event.detail && event.detail.id && event.detail.source && event.detail.id.toLowerCase().startsWith('note')) {
        document.getElementById('notes-drawer').opened = true;
    }
    else{
        event.detail.source.addEventListener('dblclick', function () {
                alert('xml:id=' + event.detail.source.id)
            })
    }
});


document.addEventListener("pb-refresh", (event)=> {
    let pbNavs = document.querySelectorAll('pb-navigation');
    pbNavs.forEach(nav => {
        nav.remove();
    });
});

