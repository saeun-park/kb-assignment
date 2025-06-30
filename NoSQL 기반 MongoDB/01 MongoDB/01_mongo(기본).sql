use tutorial
db.users.insert ({username: "smith"})
db.users.insert ({username: "jones"})
db.users.find()
db.users.findOne()
db.users.find({username: "jones"})
db.users.find({ $or: [
	{ username: "smith" },
	{ username: "jones" }
]})
db.users.update ({username: "smith"},{$set: {country: "Canada"}})
db.users.find ({username: " smith"})
db.users.update ({username: "smith"}, {country: "Canada"})
db.users.update ({country: "Canada"}, {$set: {username : "smith", country: "Canada"}})
db.users.update({username: "smith"}, {$unset: {country: 1}})
db.users.find({username: "smith"})
show dbs
show collections
db.stats()
db.users.stats()
db.users.remove({username: "smith"})
db.users.find({username: "smith"})
db.users.remove({})
db.users.find()
db.users.drop()
use test
for(let i=0; i<20000; i++) {
  db.product.insert({ num: i, name: '스마트폰' + i });
}
db.product.count();
db.product.find().sort({num:-1});
db.product.find().sort({num:-1}).limit(10);
db.product.find().sort({num:-1}).skip(10*(6-1)).limit(10);
db.product.find({ $or: [{num: {$lt: 15}},{num: {$gt: 19995}},]})
db.product.find({ name: {$in: ['스마트폰10', ' 스마트폰100', ' 스마트폰1000']}})
db.product.find({num: {$lt: 5}}, {_id:0, name:1})