#include "iostream"

namespace test {
    int basic_types() {


        short _short{ 1 };
        int _int{ 1 };
        long  _long{ 1 };
        long long _long_long{ 1 };

        int8_t _int8_t{ 1 };

        float _flot{ 0.1 };
        double _double{ 0.01 };
        long double _long_double{ 0.0001 };

        bool _bool{ true };
        _bool = false;

        char _char = 'A';
        wchar_t _wchar_t = { L'阿' };
        char8_t _char8_t{  };
        char16_t _char16_t{  };
        char32_t _char32_t{  };


        return 0;
    }
}
