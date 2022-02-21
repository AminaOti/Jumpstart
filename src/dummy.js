const dummy = () => true;

const secret = () => {
  const password = 'FAKEPASSWORD';
  console.log(password);
};

console.log(secret);

module.exports = dummy;
