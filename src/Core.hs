module Core where

import RIO

newtype Pipeline = Pipeline
    { steps :: [Step]
    }
    deriving (Eq, Show)

data Step = Step
    { name :: StepName
    , commands :: [Text]
    , image :: Image
    }
    deriving (Eq, Show)

newtype Build = Build
    { pipeline :: Pipeline
    }
    deriving (Eq, Show)

newtype StepName = StepName Text
    deriving (Eq, Show)

stepNameToText :: StepName -> Text
stepNameToText (StepName step) = step

newtype Image = Image Text
    deriving (Eq, Show)

imageToText :: Image -> Text
imageToText (Image image) = image
