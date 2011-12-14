import haxe.macro.Expr;
using haxe.macro.Context;

class Sleipnir {
    public static function main() {
        con(db.test.example);
    }
    
    @:macro public static function con(e:Expr){
        trace(e);
        
        
        var mdb = {db:{
            
        }}
        var f ="234234".makeExpr(e.pos);
        return f;
    }
    
    
}
/*
GET /db/collection - Returns all documents
GET /db/collection?query=%7B%22isDone%22%3A%20false%7D - Returns all documents satisfying query
GET /db/collection?query=%7B%22isDone%22%3A%20false%7D&limit=2&skip=2 - Ability to add options to query (limit, skip, etc)
GET /db/collection/id - Returns document with id
POST /db/collection - Insert new document in collection (document in POST body)
PUT /db/collection/id - Update document with id (updated document in PUT body)
DELETE /db/collection/id - Delete document with id*/