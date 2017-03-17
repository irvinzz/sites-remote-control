const connect = require('node-firefox-connect'),
    argv = process.argv,
    domain = argv[2],
    action = argv[3],
    port = process.env.PORT || 6000;

if (!domain || !action) {
    return console.log(`Usage: app.js example.org "action"`);
}

connect(port).then(client => {
    client.listTabs((err, tabs) => {
        if (err) {
            console.error(err);
            return process.exit(1);
        }
        var tab = tabs.find(tab => tab.url.indexOf(`://${domain}`) !== -1);
        if (!tab) {
            console.error("Tab not found");
            return process.exit(2);
        }
        tab.Console.evaluateJS(action);
        process.exit(0);
    });
}).catch(err => {
    console.error(err);
});
