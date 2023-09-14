import {test, expect} from 'bun:test'
import {addOne} from './example'

// Example unit test
test('addOne', () => {
    expect(addOne(1)).toBe(2)
})

// Example todo test
test.todo('addOne', () => {
    expect(addOne(2)).toBe(3)
})