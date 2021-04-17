#include <bits/stdc++.h>

using namespace std;

int main()
{
    srand(time(0));
    string addr[100];
    string status[2] = {"A", "N"};
    string type[3] = {"F", "A", "H"};
    string tag[2] = {"R", "S"};
    freopen("address.txt", "r", stdin);
    for (int i = 0; i < 100; i++)
    {
        getline(cin, addr[i]);
    }

    cout << "INSERT INTO property(id,L_date,adress,bhk,P_size,P_status,P_type,P_tag,P_sug_price,bathrooms,P_desc,o_ID,a_ID)\nvalues";
    for (int i = 0; i < 100; i++)
    {
        int x;
        cout << "(";
        //id
        cout << i + 1 << ",";
        //date
        cout << "'"
             << "2021"
             << "-" << rand() % 12 + 1 << "-" << rand() % 28 + 1 << "',";
        //address
        cout << "'" << addr[i] << "'"
             << ",";

        //bhk
        cout << rand() % 4 << ",";

        //P_size
        cout << rand() % 1000 + 1000 << ",";

        //P_status
        x = rand() % 2;
        cout << "'" << status[x] << "',";
        //P_type
        x = rand() % 3;
        cout << "'" << type[x] << "',";
        //P_tag
        x = rand() % 2;
        cout << "'" << tag[x] << "',";
        //P_sug_price
        cout << rand() % 100001 + 5000 << ",";
        //bathrooms
        cout << rand() % 3 << ",";
        //P_desc
        cout << "'Very beautiful propery with amaing decor',";
        //o_ID
        cout << rand() % 15 + 1 << ",";
        //a_ID
        cout << rand() % 25 + 7;
        if (i == 99)
        {
            cout << ");";
            continue;
        }
        cout << "),\n";
    }
}