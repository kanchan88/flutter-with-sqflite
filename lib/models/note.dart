class Note{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.withID(this._title, this._date, this._priority, [this._description]);

  int get id => _id;
  String get title => _title;
  String get description =>_description;
  int get priority => _priority;
  String get date =>_date;

  set title(String newTitle){
    if(newTitle.length <=200){
      this._title = newTitle;
    }
  }

  set description(String newDescription){
    if(newDescription.length <=200){
      this._description = newDescription;
    }
  }

  set priority(int newPriority){
    if(priority >= 1 && priority <=2){
      this._priority = newPriority;
    }
  }

  set date(String newDate){
    this._date = newDate;
  }

  // convert Object to MAP to save in DB
  // SQFLITE saves and returns MAP only

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if(id != null){
      map['id'] = this._id;
    }
    map['title'] = this._title;
    map['description'] = this._description;
    map['priority'] = this._priority;
    map['date'] = this._date;

    return map;
  }

  // extract note Object from MAP

  Note.fromMapObject(Map<String,dynamic> map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}