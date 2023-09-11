function createCounter(n) {
  let current = n;

  function counter() {
    return current++;
  }

  return counter;
}

// Example usage:
const n = 10;
const calls = ["call", "call", "call"];

const counter = createCounter(n);
const output = [];

for (const call of calls) {
  if (call === "call") {
    output.push(counter());
  }
}

console.log(output);
