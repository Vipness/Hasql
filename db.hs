import Data.Map (Map)
import Data.Map qualified as Map

data Value = Varchar String | Number Int | Boolean Bool
  deriving (Show, Eq)

type Row = Map String Value

data ColumnType = VarcharT | NumberT | BooleanT

type Schema = [(String, ColumnType)]

type Table = (Schema, [Row])

type Database = [Map String Table]