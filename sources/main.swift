import SQLite

class SQLWrapper {
  public func connect(database: String) -> Void {
    var dbPointer:COpaquePointer = nil
    var iConnection:Int32
    iConnection = sqlite3_open(database, &dbPointer)
    if iConnection != 0) {
      print("Error: \(sqlite3_errmsg(dbPointer))")
    }
  }
}
