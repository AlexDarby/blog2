# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog2.Repo.insert!(%Blog2.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Blog2.Accounts.register_admin(%{
  email: "alexd@fastmail.com",
  password: "oA7&F3v6Tk9#f$CH",
  password_confirmation: "oA7&F3v6Tk9#f$CH"
})
