const welcome = (number, groupname) => {
    return `Hola @${number}. Bienvenid@ al grupo ${groupname}`
}
exports.welcome = welcome

const bye = (number) => {
    return `Chau @${number}. Hasta luego 👋`
}
exports.bye = bye
