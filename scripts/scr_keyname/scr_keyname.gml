function scr_keyname(argument0) //scr_keyname
{
    switch argument0
    {
        case 38:
            return lang_get_value("key_up");
        case 39:
            return lang_get_value("key_right");
        case 37:
            return lang_get_value("key_left");
        case 40:
            return lang_get_value("key_down");
        case 13:
            return "ENTER";
        case 27:
            return "ESCAPE";
        case 32:
            return "SPACE";
        case 161:
            return "SHIFT";
        case 160:
            return "SHIFT";
        case 16:
            return "SHIFT";
        case 17:
            return "CONTROL";
        case 162:
            return "CONTROL";
        case 163:
            return "CONTROL";
        case 18:
            return "ALT";
        case 164:
            return "ALT";
        case 8:
            return "BACKSPACE";
        case 9:
            return "TAB";
        case 36:
            return "HOME";
        case 35:
            return "END";
        case 46:
            return "DELETE";
        case 45:
            return "INSERT";
        case 33:
            return "PAGE UP";
        case 34:
            return "PAGE DOWN";
        case 19:
            return "PAUSE";
        case 44:
            return "PRINTSCREEN";
        case 112:
            return "F1";
        case 113:
            return "F2";
        case 114:
            return "F3";
        case 115:
            return "F4";
        case 116:
            return "F5";
        case 117:
            return "F6";
        case 118:
            return "F7";
        case 119:
            return "F8";
        case 120:
            return "F9";
        case 121:
            return "F10";
        case 122:
            return "F11";
        case 123:
            return "F12";
        case 96:
            return "NUMPAD 0";
        case 97:
            return "NUMPAD 1";
        case 98:
            return "NUMPAD 2";
        case 99:
            return "NUMPAD 3";
        case 100:
            return "NUMPAD 4";
        case 101:
            return "NUMPAD 5";
        case 102:
            return "NUMPAD 6";
        case 103:
            return "NUMPAD 7";
        case 104:
            return "NUMPAD 8";
        case 105:
            return "NUMPAD 9";
        case 106:
            return "MULTIPLY";
        case 111:
            return "DIVIDE";
        case 107:
            return "ADD";
        case 109:
            return "SUBTRACT";
        case 110:
            return "DECIMAL";
        case -1:
            return lang_get_value("option_press_key");
    }

    switch argument0
    {
        case 8:
            return "BACKSPACE";
        case 9:
            return "TAB";
        case 13:
            return "ENTER";
        case 19:
            return "PAUSE";
        case 20:
            return "CAPS LOCK";
        case 27:
            return "ESC";
        case 32:
            return "SPACE";
        case 33:
            return "PAGEUP";
        case 34:
            return "PAGEDOWN";
        case 35:
            return "END";
        case 36:
            return "HOME";
        case 37:
            return "LEFT";
        case 38:
            return "UP";
        case 39:
            return "RIGHT";
        case 40:
            return "DOWN";
        case 45:
            return "INSERT";
        case 46:
            return "DELETE";
        case 48:
            return "0";
        case 49:
            return "1";
        case 50:
            return "2";
        case 51:
            return "3";
        case 52:
            return "4";
        case 53:
            return "5";
        case 54:
            return "6";
        case 55:
            return "7";
        case 56:
            return "8";
        case 57:
            return "9";
        case 65:
            return "A";
        case 66:
            return "B";
        case 67:
            return "C";
        case 68:
            return "D";
        case 69:
            return "E";
        case 70:
            return "F";
        case 71:
            return "G";
        case 72:
            return "H";
        case 73:
            return "I";
        case 74:
            return "J";
        case 75:
            return "K";
        case 76:
            return "L";
        case 77:
            return "M";
        case 78:
            return "N";
        case 79:
            return "O";
        case 80:
            return "P";
        case 81:
            return "Q";
        case 82:
            return "R";
        case 83:
            return "S";
        case 84:
            return "T";
        case 85:
            return "U";
        case 86:
            return "V";
        case 87:
            return "W";
        case 88:
            return "X";
        case 89:
            return "Y";
        case 90:
            return "Z";
        case 91:
            return "LEXPLR";
        case 92:
            return "REXPLR";
        case 96:
            return "NUMPAD 0";
        case 97:
            return "NUMPAD 1";
        case 98:
            return "NUMPAD 2";
        case 99:
            return "NUMPAD 3";
        case 100:
            return "NUMPAD 4";
        case 101:
            return "NUMPAD 5";
        case 102:
            return "NUMPAD 6";
        case 103:
            return "NUMPAD 7";
        case 104:
            return "NUMPAD 8";
        case 105:
            return "NUMPAD 9";
        case 106:
            return "ASTERISK";
        case 107:
            return "ADD";
        case 109:
            return "DIVIDE";
        case 110:
            return "DOT";
        case 111:
            return "SLASH";
        case 112:
            return "F1";
        case 113:
            return "F2";
        case 114:
            return "F3";
        case 115:
            return "F4";
        case 116:
            return "F5";
        case 117:
            return "F6";
        case 118:
            return "F7";
        case 119:
            return "F8";
        case 120:
            return "F9";
        case 121:
            return "F10";
        case 122:
            return "F11";
        case 123:
            return "F12";
        case 144:
            return "NUMLCK";
        case 145:
            return "SCROLLLCK";
        case 160:
            return "LSHIFT";
        case 161:
            return "RSHIFT";
        case 162:
            return "LCTRL";
        case 163:
            return "RCTRL";
        case 164:
            return "LALT";
        case 165:
            return "RALT";
        case 186:
            return "SEMICOLON";
        case 187:
            return "EQUAL";
        case 188:
            return "COMMA";
        case 189:
            return "UNDERSCR";
        case 190:
            return "DOT";
        case 191:
            return "SLASH";
        case 192:
            return "TILDE";
        case 219:
            return "LBRACKET";
        case 220:
            return "VERTBAR";
        case 221:
            return "RBRACKET";
        case 222:
            return "APOSTRPH";
    }

    return chr(argument0);
}

