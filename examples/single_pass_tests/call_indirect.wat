(module
    (type $binop (func (param i32 i32) (result i32)))
    (table 1 100 anyfunc)
    (elem (i32.const 5) $sub)
    (elem (i32.const 10) $add)

    (func $main (export "main")
        (if (i32.eq (call_indirect (type $binop) (i32.const 42) (i32.const 1) (i32.const 10)) (i32.const 43))
            (then)
            (else unreachable)
        )
        (if (i32.eq (call_indirect (type $binop) (i32.const 42) (i32.const 1) (i32.const 5)) (i32.const 41))
            (then)
            (else unreachable)
        )
    )

    (func $add (param i32) (param i32) (result i32)
        (i32.add (get_local 0) (get_local 1))
    )

    (func $sub (param i32) (param i32) (result i32)
        (i32.sub (get_local 0) (get_local 1))
    )
)
