;; see also
;; http://www.enigmacurry.com/2009/01/21/autocompleteel-python-code-completion-in-emacs/
;; about auto-complete-mode for python-mode
(defconst my/haskell-reserved-keywords
  (sort
   (list "case" "class" "data" "default" "deriving" "do" "else" "if" "import" "in" "infix"
   "infixl" "infixr" "instance" "let" "module" "newtype" "of" "then" "type" "where" "as"
   "qualified" "hiding")
   #'(lambda (a b) (> (length a) (length b))))
  "Reserved keywords in Haskell.")

(defconst my/haskell-defined-types
  (sort
   (list "Bool" "False" "True" "Char" "String" "IO" "IOError" "Maybe" "Just" "Nothing"
   "Either" "Right" "Left" "Ordering" "LT" "EQ" "GT" "Integer" "Int" "Ratio" "Float"
   "Double" "Complex")
   #'(lambda (a b) (> (length a) (length b))))
  "Defined types in Haskell.")

(defconst my/haskell-defined-classes
  (sort
   (list "Eq" "==" "/=" "Ord" "compare" "max" "min" "<=" ">=" "ReadS" "ShowS" "Read"
   "read" "readsPrec" "readList" "showsPrec" "show" "showList" "Enum" "succ" "toEnum"
   "fromEnum" "enumFrom" "enumFromThen" "enumFromTo" "enumFromThenTo" "Functor" "fmap"
   "Monad" ">>=" ">>" "return" "fail" "Bounded" "minBound" "maxBound" "Num" "negate" "abs"
   "signum" "fromInteger" "Real" "toRational" "Integral" "quot" "rem" "div" "mod"
   "quotRem" "divMod" "toInteger" "Fractional" "recip" "fromRational" "Floating" "pi"
   "exp" "log" "sqrt" "**" "logBase" "sin" "cos" "tan" "asin" "acos" "atan" "sinh" "cosh"
   "tanh" "asinh" "acosh" "atanh" "RealFrac" "properFraction" "truncate" "ceiling" "floor"
   "RealFloat" "floatRadix" "floatDigits" "floatRange" "decodeFloat" "encodeFloat"
   "exponent" "significand" "scaleFloat" "isNan" "isInfinite" "isDenormalized"
   "isNegativeZero" "isIEEE" "atan2" "gcd" "lcm" "^^" "fromIntegral" "realtoFrac")
   #'(lambda (a b) (> (length a) (length b))))
  "Defined classes in Haskell.")

(defconst my/haskell-prelude-functions
  (sort
   (list ; "&&" "||"
         "not" "otherwise" "maybe" "either" "fst" "snd" "curry" "uncurry" "pred"
         "round" "subtract" "odd" "mapM" "mapM_" "sequence" "sequence_" "=<<" "id" "const"
         "flip" "until" "asTypeOf" "error" "undefined" "$!" "seq" "map" "++" "filter"
         "head" "last" "tail" "init" "null" "length" "!!" "reverse" "fold" "fold1" "foldr"
         "foldr1" "and" "or" "any" "all" "sum" "product" "concat" "concatMap" "maximum"
         "minimum" "scanl" "scanl1" "scanr" "scanr1" "iterate" "repeat" "replicate"
         "cycle" "take" "drop" "splitAt" "takeWhile" "dropWhile" "span" "break" "elem"
         "notElem" "lookup" "zip" "zip3" "zipWith" "zipWith3" "unzip" "unzip3" "lines"
         "words" "unlines" "unwords" "shows" "showChar" "showString" "showParen" "reads"
         "readParen" "lex" "putChar" "putStr" "putStrLn" "print" "getChar" "getLine"
         "getContents" "intract" "FilePath" "readFile" "writeFile" "appendFile" "readIO"
         "readLn" "IOException" "ioError" "userError" "catch")
   #'(lambda (a b) (> (length a) (length b))))
  "Defined functions in GHC Prelude.")

(defconst my/haskell-ghc-modules
  (sort
   (list
   "Control.Applicative" "Control.Arrow" "Control.Category" "Control.Concurrent"
   "Control.Concurrent.MVar" "Control.Concurrent.QSem" "Control.Concurrent.QSemN"
   "Control.Concurrent.STM" "Control.Concurrent.STM.TArray" "Control.Concurrent.STM.TChan"
   "Control.Concurrent.STM.TMVar" "Control.Concurrent.STM.TVar"
   "Control.Concurrent.SampleVar" "Control.Exception" "Control.Exception.Base"
   "Control.Monad" "Control.Monad.Cont" "Control.Monad.Cont.Class" "Control.Monad.Error"
   "Control.Monad.Error.Class" "Control.Monad.Fix" "Control.Monad.Identity"
   "Control.Monad.Instances" "Control.Monad.List" "Control.Monad.RWS"
   "Control.Monad.RWS.Class" "Control.Monad.RWS.Lazy" "Control.Monad.RWS.Strict"
   "Control.Monad.Reader" "Control.Monad.Reader.Class" "Control.Monad.ST"
   "Control.Monad.ST.Lazy" "Control.Monad.ST.Strict" "Control.Monad.STM"
   "Control.Monad.State" "Control.Monad.State.Class" "Control.Monad.State.Lazy"
   "Control.Monad.State.Strict" "Control.Monad.Trans" "Control.Monad.Writer"
   "Control.Monad.Writer.Class" "Control.Monad.Writer.Lazy" "Control.Monad.Writer.Strict"
   "Control.OldException" "Control.Parallel" "Control.Parallel.Strategies"
   "Data.Array" "Data.Array.Diff" "Data.Array.IArray" "Data.Array.IO"
   "Data.Array.IO.Internals" "Data.Array.MArray" "Data.Array.Paralell"
   "Data.Array.Paralell.Arr" "Data.Array.Paralell.Base" "Data.Array.Paralell.Lifted"
   "Data.Array.Paralell.PArray" "Data.Array.Paralell.Prelude"
   "Data.Array.Paralell.Prelude.Double" "Data.Array.Paralell.Int"
   "Data.Array.Paralell.Word8" "Data.Array.Paralell.Stream" "Data.Array.Paralell.Unlifted"
   "Data.Array.Paralell.Unlifted.Distributed" "Data.Array.Paralell.Unlifted.Paralell"
   "Data.Array.Paralell.Unlifted.Sqeuential" "Data.Array.ST" "Data.Array.Storable"
   "Data.Array.Unboxed" "Data.Bits" "Data.Bool" "Data.ByteString" "Data.ByteString.Char8"
   "Data.ByteString.Fusion" "Data.ByteString.Internal" "Data.ByteString.Lazy"
   "Data.ByteString.Lazy.Char8" "Data.ByteString.Lazy.Fusion"
   "Data.ByteString.Lazy.Internal" "Data.ByteString.Unsafe" "Data.Char" "Data.Complex"
   "Data.Data" "Data.Dynamic" "Data.Either" "Data.Eq" "Data.Fixed" "Data.Foldable"
   "Data.Function" "Data.Generics" "Data.Generics.Aliases" "Data.Generics.Basics"
   "Data.Generics.Instances" "Data.Generics.Schemes" "Data.Generics.Text"
   "Data.Generics.Twins" "Data.Graph" "Data.HashTable" "Data.IORef" "Data.Int"
   "Data.IntMap" "Data.IntSet" "Data.Ix" "Data.List" "Data.Map" "Data.Maybe" "Data.Monoid"
   "Data.Ord" "Data.Ratio" "Data.STRef" "Data.STRef.Lazy" "Data.STRef.Strict"
   "Data.Sequence" "Data.Set" "Data.String" "Data.Time" "Data.Time.Calendar"
   "Data.Time.Calendar.Easter" "Data.Time.Calendar.Julian" "Data.Time.Calendar.MonthDay"
   "Data.Time.Calendar.OrdinalDate" "Data.Time.Calendar.WeekDate" "Data.Time.Clock"
   "Data.Time.Clock.POSIX" "Data.Time.Clock.TAI" "Data.Time.Format" "Data.Time.LocalTime"
   "Data.Traversable" "Data.Tree" "Data.Tuple" "Data.Typeable" "Data.Unique"
   "Data.Version" "Data.Word" "Debug.Trace"
   "Distribution.Compat.ReadP" "Distribution.Compiler" "Distribution.InstalledPackageInfo"
   "Distribution.License" "Distribution.Make" "Distribution.ModuleName"
   "Distribution.Package" "Distribution.PackageDescription"
   "Distribution.PackageDescription.Check" "Distribution.PackageDescription.Configuration"
   "Distribution.PackageDescription.Parse" "Distribution.ParseUtils" "Distribution.ReadE"
   "Distribution.Simple" "Distribution.Simple.Build" "Distribution.Simple.Build.Macros"
   "Distribution.Simple.Build.PathsModule" "Distribution.Simple.BuildPaths"
   "Distribution.Simple.Command" "Distribution.Simple.Compiler"
   "Distribution.Simple.Configure" "Distribution.Simple.GHC" "Distribution.Simple.Haddock"
   "Distribution.Simple.Hugs" "Distribution.Simple.Install"
   "Distribution.Simple.InstallDirs" "Distribution.Simple.JHC"
   "Distribution.Simple.LocalBuildInfo" "Distribution.Simple.NHC"
   "Distribution.Simple.PackageIndex" "Distribution.Simple.PreProcess"
   "Distribution.Simple.PreProcess.Unlit" "Distribution.Simple.Program"
   "Distribution.Simple.Register" "Distribution.Simple.Setup"
   "Distribution.Simple.SrcDist" "Distribution.Simple.UserHooks"
   "Distribution.Simple.Utils" "Distribution.System" "Distribution.Text"
   "Distribution.Verbosity" "Distribution.Version"
   "Foreign" "Foreign.C" "Foreign.C.Error" "Foreign.C.String" "Foreign.C.Types"
   "Foreign.Concurrent" "Foreign.ForeignPtr" "Foreign.Marshal" "Foreign.Marshal.Alloc"
   "Foreign.Marshal.Array" "Foreign.Marshal.Error" "Foreign.Marshal.Pool"
   "Foreign.Marshal.Utils" "Foreign.Ptr" "Foreign.StablePtr" "Foreign.Storable"
   "GHC.Arr" "GHC.Bool" "GHC.Conc" "GHC.ConsoleHandler" "GHC.Desugar" "GHC.Environment"
   "GHC.Err" "GHC.Exts" "GHC.Generics" "GHC.Handle" "GHC.Ordering" "GHC.PArr" "GHC.Prim"
   "GHC.PrimopWrappers" "GHC.Tuple" "GHC.Types" "GHC.Unicode" "GHC.Unit"
   "Language.Haskell.Extension" "Language.Haskell.Lexer" "Language.Haskell.ParseMonad"
   "Language.Haskell.ParseUtils" "Language.Haskell.Parser" "Language.Haskell.Pretty"
   "Language.Haskell.Syntax" "Language.Haskell.TH" "Language.Haskell.TH.Lib"
   "Language.Haskell.TH.Ppr" "Language.Haskell.TH.PprLib" "Language.Haskell.TH.Quote"
   "Language.Haskell.TH.Syntax"
   "Network" "Network.BSD" "Network.Socket" "Network.URI" "Numeric"
   "Prelude"
   "System.CPUTime" "System.Cmd" "System.Console.Editline" "System.Console.Readline"
   "System.Console.GetOpt" "System.Directory" "System.Environment" "System.Exit"
   "System.FilePath" "System.FilePath.Posix" "System.FilePath.Windows" "System.IO"
   "System.IO.Error" "System.IO.Unsafe" "System.Info" "System.Locale" "System.Mem"
   "System.Mem.StableName" "System.Mem.Weak" "System.Posix" "System.Posix.Directory"
   "System.Posix.DynamicLinker" "System.Posix.DynamicLinker.Module"
   "System.Posix.DynamicLinker.Prim" "System.Posix.Env" "System.Posix.Error"
   "System.Posix.Files" "System.Posix.IO" "System.Posix.Process"
   "System.Posix.Process.Internals" "System.Posix.Resource" "System.Posix.Semaphore"
   "System.Posix.SharedMem" "System.Posix.Signals" "System.Posix.Signals.Exts"
   "System.Posix.Temp" "System.Posix.Terminal" "System.Posix.Time" "System.Posix.Types"
   "System.Posix.Unistd" "System.Posix.User" "System.Process" "System.Random"
   "System.Time" "System.Timeout"
   "Test.HUnit" "Test.HUnit.Base" "Test.HUnit.Lang" "Test.HUnit.Terminal"
   "Test.HUnit.Text" "Test.QuickCheck" "Test.QuickCheck.Batch" "Test.QuickCheck.Poly"
   "Test.QuickCheck.Utils" "Text.Html" "Text.Html.BlockTable"
   "Text.ParserCombinators.Parsec" "Text.ParserCombinators.Parsec.Char"
   "Text.ParserCombinators.Parsec.Combinator" "Text.ParserCombinators.Parsec.Error"
   "Text.ParserCombinators.Parsec.Expr" "Text.ParserCombinators.Parsec.Language"
   "Text.ParserCombinators.Parsec.Perm" "Text.ParserCombinators.Parsec.Pos"
   "Text.ParserCombinators.Parsec.Prim" "Text.ParserCombinators.Parsec.Token"
   "Text.ParserCombinators.ReadP" "Text.ParserCombinators.ReadPrec" "Text.PrettyPrint"
   "Text.PrettyPrint.HughesPJ" "Text.Printf" "Text.Read" "Text.Read.Lex" "Text.Regex.Base"
   "Text.Regex.Base.Context" "Text.Regex.Base.Impl" "Text.Regex.Base.RegexLike"
   "Text.Regex.Posix" "Text.Regex.Posix.ByteString" "Text.Regex.Posix.String"
   "Text.Regex.Posix.Wrap" "Text.Show" "Text.Show.Functions" "Text.XHtml"
   "Text.XHtml.Debug" "Text.XHtml.Frameset" "Text.XHtml.Strict" "Text.XHtml.Table"
   "Text.XHtml.Transitional" "Trace.Hpc.Mix" "Trace.Hpc.Reflect" "Trace.Hpc.Tix"
   "Trace.Hpc.Util"
   "Unsafe.Coerce") #'(lambda (a b) (> (length a) (length b))))
  "GHC modules.")

;; see also the latest GHC manual
;; http://www.haskell.org/ghc/docs/latest/html/users_guide/pragmas.html
(defconst my/haskell-ghc-pragmas
  (sort
   (list "LANGUAGE" "OPTIONS_GHC" "INCLUDE" "WARNING" "DEPRECATED" "INLINE" "NOINLINE"
   "LINE" "RULES" "SPECIALIZE" "UNPACK" "SOURCE")
   #'(lambda (a b) (> (length a) (length b))))
  "GHC pragmas.")

;; see also the latest GHC manual
;; http://www.haskell.org/ghc/docs/latest/html/users_guide/flag-reference.html#id2631364
(defvar my/haskell-ghc-options
  (list "OverlappingInstances" "IncoherentInstances" "UndecidableInstances" "Arrows"
        "ForeignFunctionInterface" "Generics" "ImplicitParams" "ImplicitPrelude"
        "MonomorphismRestriction" "MonoPatBinds" "RelaxedPolyRec" "ExtendedDefaultRules"
        "OverloadedStrings" "GADTs" "TypeFamilies" "ScopedTypeVariables" "TemplateHaskell"
        "QuasiQuotes" "BangPatterns" "CPP" "PatternGuards" "ViewPatterns" "UnicodeSyntax"
        "MagicHash" "NewQualifiedOperators" "PolymorphicComponents" "Rank2Types"
        "RankNTypes" "ImpredicativeTypes" "ExistentialQuantification" "KindSignatures"
        "EmptyDataDecls" "ParallelListComp" "TransformListComp" "UnliftedFFITypes"
        "LiberalTypeSynonyms" "TypeOperators" "RecursiveDo" "PArr" "RecordWildCards"
        "NamedFieldPuns" "DisambiguateRecordFields" "UnboxedTuples" "StandaloneDeriving"
        "DeriveDataTypeable" "GeneralizedNewtypeDeriving" "TypeSynonymInstances"
        "FlexibleContexts" "FlexibleInstances" "ConstrainedClassMethods"
        "MultiParamTypeClasses" "FunctionnalDependencies" "PackageImports"))
(defvar my/haskell-ghc-no-options
      (mapcar '(lambda (n) (concat "No" n)) my/haskell-ghc-options))
(defvar my/haskell-ghc-language-options
  (sort (append nil my/haskell-ghc-options my/haskell-ghc-no-options)
        #'(lambda (a b) (> (length a) (length b))))
  "GHC Language options.")

(defvar my/ac-source-haskell
  '((candidates
     . (lambda ()
         (all-completions ac-target
                          (append nil
                                  my/haskell-defined-types
                                  my/haskell-defined-classes
                                  my/haskell-reserved-keywords
                                  my/haskell-prelude-functions
                                  my/haskell-ghc-modules
                                  my/haskell-ghc-pragmas
                                  my/haskell-ghc-language-options
                                  '("-fglasgow-exts"))))))
  "Sources for Haskell keywords.")

(provide 'haskell-ac)
