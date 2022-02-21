const dummy = () => true;

const secret = () => {
  const password = 'FAKEPASSWORD';
  console.log(password);
};

module.exports = { dummy, secret };
