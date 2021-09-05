class FoodItem {
  String _name;
  String _imgPath;
  int _undercookedTime;
  int _cookedTime;
  int _overcookedTime;
  int _currentTime;
  String _cookingStatus;

  FoodItem(name, imgPath, undercookedTime, cookedTime, overCookedTime) {
    this._name = name;
    this._imgPath = imgPath;
    this._undercookedTime = undercookedTime;
    this._cookedTime = cookedTime;
    this._overcookedTime = overCookedTime;
    this._currentTime = 0;
    this._cookingStatus = 'Raw';
  }

  String getName() {
    return this._name;
  }

  String getImgPath() {
    return this._imgPath;
  }

  int getUndercookedTime() {
    return this._undercookedTime;
  }

  int getCookedTime() {
    return this._cookedTime;
  }

  int getOvercookedTime() {
    return this._overcookedTime;
  }

  int getCurrentTime() {
    return this._currentTime;
  }

  String getStatus() {
    return this._cookingStatus;
  }

  double getCookedPercentage() {
    if (this._cookingStatus == 'Raw' || this._cookingStatus == 'Undercooked') {
      return this._currentTime / this._cookedTime;
    } else {
      return (this._currentTime - this._cookedTime) /
          (this._overcookedTime - this._cookedTime);
    }
  }

  void incrementCurrentTime() {
    this._currentTime++;
    this.updateCookingStatus();
  }

  void updateCookingStatus() {
    if (this._currentTime >= this._overcookedTime) {
      this._cookingStatus = 'Overcooked';
    } else if (this._currentTime >= this._cookedTime) {
      this._cookingStatus = 'Cooked';
    } else if (this._currentTime >= this._undercookedTime) {
      this._cookingStatus = 'Undercooked';
    }
  }

  void reset() {
    _currentTime = 0;
    _cookingStatus = 'Raw';
  }
}
