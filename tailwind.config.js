const defaultTheme = require("tailwindcss/defaultTheme");
const defaultConfig = require("tailwindcss/defaultConfig");
const xtenduiConfig = require("xtendui/tailwind.preset");

module.exports = {
  presets: [defaultConfig, xtenduiConfig],
  content: [
    "./node_modules/xtendui/src/*.mjs",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,html}",
    "./app/components/**/*.{erb,html}",
    "./test/components/**/*.rb",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      colors: ({ theme }) => ({
        primary: theme.colors.indigo,
      }),
      maxHeight: ({ theme }) => ({ ...theme.height }),
      maxWidth: ({ theme }) => ({ ...theme.width }),
      xtendui: {
        global: {
          component: theme => ({
            ".xt-overflow-main": {
              "&::-webkit-scrollbar": {
                background: theme("colors.gray.100"),
                borderStyle: "solid",
                borderWidth: 0,
                borderLeftWidth: 1,
                borderColor: theme("colors.gray.200"),
              },
              "&::-webkit-scrollbar-thumb": {
                background: theme("colors.gray.400"),
                borderRadius: theme("borderRadius.full"),
              },
            },
          }),
        },
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
};
