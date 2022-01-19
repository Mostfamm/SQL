const Sequelize = require('sequelize')
const sequelize = new Sequelize('mysql://root:@localhost/sql_intro')

sequelize
    .authenticate()
    .then(() => {
        console.log('Connection has been established successfully.');
    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    })


    const maxWeight  = async function () {
        let haviestPoke = await sequelize.query(`SELECT * FROM pokemon WHERE weight = (SELECT MAX(weight) FROM pokemon`)
        return haviestPoke
    }

    const findByType = async function(type){
        let names = await sequelize.query(`SELECT name FROM pokemon,type WHERE pokemon.type_id=type.id AND type.name = '${type}'`)
        return names
    }

    const findOwners = async function(pokemon){
        let names = await sequelize.query(`SELECT name 
        FROM trainer,pokemon,pokemon_trainer 
        WHERE trainer.id=pokemon_trainer.trainer_id AND pokemon.name = '${pokemon}'`)
        return names
    }

    const findRoster = async function(owner){
        let names = await sequelize.query(
        `SELECT name 
        FROM pokemon,trainer,pokemon_trainer 
        WHERE pokemon.id=pokemon_trainer.pokemon_id AND trainer.name = '${owner}'`)
        return names
    }