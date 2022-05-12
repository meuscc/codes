mod l1_basics;
mod l2_ownership_references_borrowing;
mod l3_structs;
mod l5_collections;
mod l4_enums_pattern_matching;
mod l6_error_handling;
mod l7_generic_traits_lifetimes;
mod l8_iterators_closures;
mod l9_smart_pointers;
mod l10_concurrency;
mod l11_advanced;
mod l12_async;

use std::collections::HashMap;

fn main() {
    println!("Hello, world!");

    variables_basic_type();
}

fn variables_basic_type() {
    // 变量常量
    let mut _mut = 123;
    _mut = 456;
    const _ZERO: i32 = 0;

    let spaces = "   ";
    let spaces = spaces.len();
    println!("新的 space 变量已经边长 int32, 值为: {}", spaces);

    // 布尔
    const _TRUE: bool = true;
    const _FALSE: bool = false;

    // 整数
    const _U8: u8 = b'A';
    const _U16: u16 = 0o77;
    const _U32: u16 = 0xff;
    const _U64: u64 = 98_222;
    const _U128: u128 = 100_100_100_000;
    const _USIZE: usize = 100_100_100_000;

    const _I8: i8 = -0b111_0000;
    const _I16: i16 = 16;
    const _I32: i32 = 32;
    const _I64: i64 = 64;
    const _I128: i128 = 128;
    const _ISIZE: isize = -128;

    let _int = 123; // 默认为 i32

    // 实数
    const _F32: f32 = 1.23E23;
    const _F64: f64 = 0.1234e-23;

    let _f = 1.618; // 默认为 f64

    let _heart_eyed_cat: char = '😻';

    // 元组
    let tup = (500, 6.4, 1);
    let (_x, _y, _z) = tup;
    let _five_hundred = tup.0;

    // 数组和切片
    let a1: [i32; 5] = [1, 2, 3, 4, 5];
    let a2 = [3; 5];
    println!("数组的第 0 个元素为: {}", a2[0]);

    let slice = &a1[1..];
    println!("切片的第 0 个元素为: {}", slice[0]);

    // 映射
    let mut subs: HashMap<String, i32> = HashMap::new();
    subs.insert(String::from("Key"), 1000);
    subs.entry("Golang Dojo".to_owned()).or_insert(3);
    // println!("映射的键名为 Key 的值为: {}", subs.get(&String::from("Key"))?);

    // 结构体
    struct User {
        username: String,
        active: bool,
    }

    let user1 = User {
        username: String::from("bogdan"),
        active: true,
    };

    struct Color(i32, i32, i32);
    let black = Color(0, 0, 0);

    // 枚举
    enum Command {
        Quit,
        Move { x: i32, y: i32 },
        Speak(String),
        ChangeBGColor(i32, i32, i32),
    }

    let msg1 = Command::Quit;
    let msg2 = Command::Move { x: 1, y: 2 };
    let msg3 = Command::Speak("Hi".to_owned());
    let msg4 = Command::ChangeBGColor(0, 0, 0);
}