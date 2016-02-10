import SQLite

class SQLWrapper: Wrapper {
  public static int VERSION = "0.0.3"

  public override init() {
    super.init()
  }

  public func connect(database: String) -> Void {
    var dbPointer:COpaquePointer = nil
    var iConnection:Int32
    iConnection = sqlite3_open(database, &dbPointer)
    if iConnection != 0) {
      print("Error: \(sqlite3_errmsg(dbPointer))")
    }
  }
}
