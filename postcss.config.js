module.exports = {
    plugins: [
      require('postcss-custom-properties')({
        preserve: false // Chuyển đổi biến CSS thành giá trị tĩnh
      })
    ]
  }