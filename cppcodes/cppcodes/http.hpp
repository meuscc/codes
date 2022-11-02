#pragma once

#include <uwebsockets/App.h>
#include <thread>
#include <algorithm>
#include <mutex>
#include <nlohmann/json.hpp>

#include <httplib.h>

std::string ContentJsonType = "text/json; charset=utf-8";

int run() {
    httplib::Server svr;

    svr.Get("/hi", [](const httplib::Request &, httplib::Response &res) {
        res.set_content("Hello World! 你好世界2323十分士大夫sdf 士大夫", ContentJsonType);
    });

    svr.listen("0.0.0.0", 8080);
    return 0;
}
