module Part7.Parser where
import Control.Applicative (Alternative(..))
import Util (notImplementedYet)

{-
Парсер представляет из себя функцию из входной строки в один из двух вариантов
1. Остаток строки после разбора и сам результат разбора
2. Строковую ошибку
-}
newtype Parser a = Parser {runParser :: String -> Either String (String, a)}

instance Functor Parser where
  fmap  = notImplementedYet

instance Applicative Parser where
  pure = notImplementedYet
  (<*>) = notImplementedYet

instance Alternative Parser where
  (<|>) = notImplementedYet
  empty = notImplementedYet

instance Monad Parser where
  (>>=) = notImplementedYet

instance MonadFail Parser where
  fail = notImplementedYet

-- | Проверяет что входная строка закончилась, иначе - ошибка
eofP :: Parser ()
eofP = notImplementedYet

-- | Пытается прочитать заданный символ, если не получилось - ошибка
charP :: Char -> Parser ()
charP c = notImplementedYet

-- | Пытается прочитать любой символ, если не получилось - ошибка
anyCharP :: Parser Char
anyCharP = notImplementedYet

-- | Пытается прочитать заданную строку, если не получилось - ошибка
stringP :: String -> Parser ()
stringP s = notImplementedYet

-- | Парсит 0 и больше раз `p` разделенный `sepP`.
sepBy :: Parser a -> Parser b -> Parser [a]
sepBy p sepP = notImplementedYet

-- | Парсит 1 и больше раз `p` разделенный `sepP`.
sepBy1 :: Parser a -> Parser b -> Parser [a]
sepBy1 p sepP = notImplementedYet

-- | Парсит p, если не получилось возвращает дефолтное значение
optional :: a -> Parser a -> Parser a
optional def p = notImplementedYet
