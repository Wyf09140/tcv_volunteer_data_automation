
function fetchData() {
  var url = 'https://api.galaxydigital.com/api/hours'; # Example of endpoint
  var token = 'your_bearer_token'  
  var options = {
    'method': 'get',
    'headers': {
      'Authorization': 'Bearer ' + token,
      'Content-Type': 'application/json'
    },
    'muteHttpExceptions': true
  };

  var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  sheet.clear();  // Clear existing data
  var allRows = [];

  while (url) {
    var response = UrlFetchApp.fetch(url, options);
    var json = JSON.parse(response.getContentText());
    var data = json.data;

    if (!data || data.length == 0) {
      Logger.log("No data found.");
      break;
    }

    var rows = data.map(function(item) {
      var fullName = (item.user ? item.user.user_fname : '') + ' ' + (item.user ? item.user.user_lname : '');   # Example target data column

      return [
        item.user ? item.user.id : '',              # Example target data column
        item.user ? item.user.domain_id : '',       # Example target data column
        fullName, 
        item.user ? item.user.user_fname : '',      # Example target data column
        item.user ? item.user.user_lname : '',      # Example target data column
        item.user ? item.user.user_email : '',      # Example target data column
        item.groups ? item.groups.group_title : '',   # Example target data column
        item.hour_date_start,                       # Example target data column
        item.hour_date_end,                         # Example target data column
        item.hour_hours,                            # Example target data column
        item.created_at,                            # Example target data column
        item.updated_at                             # Example target data column
      ];
    });

    allRows = allRows.concat(rows);
    url = json.links ? json.links.next : null;
  }

  // 批量写入数据
  #Columns Name
  var headers = ["User ID", "User Domain ID", "User Full Name","User First Name", "User Last Name", "User Email", "Group Title","date_start","date_end","hour_hours","created_at","updated_at"];
  sheet.appendRow(headers); // 写入标题
  sheet.getRange(2, 1, allRows.length, headers.length).setValues(allRows);
}
