var savedLocaleName = localStorage.getItem ("DoctorRyner/CV/localeName")

var app = Elm.Main.init (
    { node: document.getElementById ("elm")
    , flags: savedLocaleName === null ? "en" : savedLocaleName
    }
)

app.ports.setCurrentLocale.subscribe ( function (localeName) {
    localStorage.setItem ("DoctorRyner/CV/localeName", localeName)
})
