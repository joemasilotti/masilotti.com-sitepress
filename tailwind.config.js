/** @type {import("tailwindcss").Config} */
module.exports = {
  content: [
    "./components/**/*.*",
    "./helpers/**/*.*",
    "./layouts/**/*.*",
    "./models/**/*.*",
    "./pages/**/*.*"
  ],
  theme: {
    extend: {},
  },
  plugins: [
    // require("@tailwindcss/forms"),
    // require("@tailwindcss/aspect-ratio"),
    // require("@tailwindcss/typography"),
  ],
}
