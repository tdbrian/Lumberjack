program = require("commander")
program.version("0.0.1").option("-p, --peppers", "Add peppers").option("-P, --pineapple", "Add pineapple").option("-b, --bbq", "Add bbq sauce").option("-c, --cheese [type]", "Add the specified type of cheese [marble]", "marble").parse process.argv
console.log "you ordered a pizza with:"
console.log "  - peppers"  if program.peppers
console.log "  - pineappe"  if program.pineapple
console.log "  - bbq"  if program.bbq
console.log "  - %s cheese", program.cheese
program.prompt "name: ", (name) ->
  console.log "hi %s", name