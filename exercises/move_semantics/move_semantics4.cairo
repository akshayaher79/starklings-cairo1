// move_semantics4.cairo
// Refactor this code so that instead of passing `arr0` into the `fill_arr` function,
// the Array gets created in the function itself and passed back to the main
// function.
// Execute `starklings hint move_semantics4` or use the `hint` watch subcommand for a hint.

use debug::PrintTrait;

fn main() {
    let mut arr = fill_arr();

    arr.clone().print();

    arr.append(88);

    arr.clone().print();
}

// `fill_arr()` should no longer take `arr: Array<felt252>` as argument
fn fill_arr() -> Array<felt252> {
    let mut arr = ArrayTrait::<felt252>::new();

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
