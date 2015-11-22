//
//  ViewController.m
//  cal
//
//  Created by 関口流星 on 2015/11/13.
//  Copyright © 2015年 関口流星. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    float count;
      //表示させる数字１
    float calcu;
      //表示させる数字２
    int flag;
      //加減乗除の場合分けの数字
    double kaisu;
      //小数点以下の場合の数値
    
    
    NSString *countLabelText;
    BOOL firstInput;
    BOOL syosu;
      //小数を使っているか否か
    BOOL PLUS;
      //正負の数の判別
    
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    IBOutlet UIButton *btn4;
    IBOutlet UIButton *btn5;
    IBOutlet UIButton *btn6;
    IBOutlet UIButton *btn7;
    IBOutlet UIButton *btn8;
    IBOutlet UIButton *btn9;
    IBOutlet UIButton *btn0;
    IBOutlet UIButton *point;
    
    IBOutlet UIButton *plus;
    IBOutlet UIButton *minus;
    IBOutlet UIButton *malti;
    IBOutlet UIButton *device;
    IBOutlet UIButton *equal;
    IBOutlet UIButton *percent;
    IBOutlet UIButton *AllClear;
    IBOutlet UIButton *hugo;
    IBOutlet UIButton *back;

    IBOutlet UILabel *countlabel;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    count =0.0000;
    //変数countは始めは０である
    calcu =0;
    //変数calcuは始めは０である
    flag =0;
    //変数flagは始めは０である
    firstInput = YES;
    //firstInputの状態から始まる
    syosu =NO;
    //小数点がない状態から始まる
    kaisu =1;
    
    PLUS =YES;
}


-(IBAction)push1:(id)sender{
    if (PLUS == YES){
    //１ボタンを押したときのメソッドをつくる
    if(firstInput == YES && syosu == NO){
        //はじめの操作かつ整数の時
    count =1;
        //countは１と表示される
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        //countLabelTextにcountの数字つまり「１」が表示される
    [countlabel setText:countLabelText];
        //countLabelの文字を更新する
        firstInput = FALSE;
        //firstInputでない状態に変更する
        
        
      }else if(firstInput == YES && syosu == YES){
       
          count = 0.1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        //countLabelTextにcountの2桁以上の数字を表示させる
        [countlabel setText:countLabelText];
        //countLabelの文字を更新する
          firstInput = FALSE;
          kaisu=kaisu +1;
          
    }else if(firstInput == NO && syosu ==NO){
        count = count*10 +1;
        //countを１０倍し１を足す
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        //countLabelTextにcountの2桁以上の数字を表示させる
        [countlabel setText:countLabelText];
        //countLabelの文字を更新する
       
    }else if(firstInput ==NO && syosu ==YES){
        count = count + pow(0.1, kaisu);
        kaisu =kaisu +1;
      
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        //countLabelTextにcountの2桁以上の数字を表示させる
        [countlabel setText:countLabelText];
        //countLabelの文字を更新する
        
    }
    
    
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 1*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }
        
    }
}


//以下２〜９及び０はpush1と同様なメソッドである。


-(IBAction)push2:(id)sender{
    if(PLUS == YES){
    
    if(firstInput == YES && syosu ==NO){
        count =2;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
       }else if(firstInput ==YES && syosu == YES){
        count = 0.2;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
           kaisu = kaisu +1;
           firstInput =NO;
           
       }else if (firstInput ==NO && syosu ==NO){
           count = count*10 + 2;
           countLabelText = [NSString stringWithFormat:@"%.4f",count];
           [countlabel setText:countLabelText];
           
       }else if(firstInput ==NO && syosu ==YES){
           count = count + 2*pow(0.1, kaisu);
           kaisu = kaisu+1;
           countLabelText = [NSString stringWithFormat:@"%.4f",count];
           [countlabel setText:countLabelText];
           
       }
    }else if(PLUS ==NO){
           if (firstInput ==NO && syosu ==NO){
               count = count*10 - 2;
               countLabelText = [NSString stringWithFormat:@"%.4f",count];
               [countlabel setText:countLabelText];
               
           }else if(firstInput ==NO && syosu ==YES){
               count = count - 2*pow(0.1, kaisu);
               kaisu = kaisu+1;
               countLabelText = [NSString stringWithFormat:@"%.4f",count];
               [countlabel setText:countLabelText];
       }
    }
    
}



-(IBAction)push3:(id)sender{
    if (PLUS == YES) {
        if(firstInput == YES && syosu ==NO){
        count =3;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput ==YES && syosu ==YES){
        count = 0.3;
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput =NO;
        
    }else if(firstInput ==NO && syosu == NO){
        count = count*10 + 3;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if(firstInput == NO && syosu== YES){
        count = count + 3*pow(0.1, kaisu);
        kaisu = kaisu+1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        }
        
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 3;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 3*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
    
}


-(IBAction)push4:(id)sender{
    if(PLUS == YES){
    
    if(firstInput == YES && syosu == NO){
        count =4;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput == YES && syosu==YES){
        count = 0.4;
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput =FALSE;
        
    }else if (firstInput == NO && syosu ==NO){
        count = count*10 + 4;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if(firstInput == NO && syosu == YES){
        count = count+ 4*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 4;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 4*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
}

-(IBAction)push5:(id)sender{
    if(PLUS == YES){
    if(firstInput == YES && syosu ==NO){
        count =5;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput == YES && syosu == YES){
        count = 0.5;
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if (firstInput == NO && syosu ==NO){
        count = count*10 + 5;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];

    }else if (firstInput ==NO && syosu ==YES){
        count = count + 5*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];

    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 5;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 5*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
}


-(IBAction)push6:(id)sender{
    if(PLUS == YES){
    
    if(firstInput == YES && syosu ==NO){
        count =6;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput == YES && syosu ==YES){
        count = 0.6;
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (firstInput ==NO && syosu == NO){
        count = count*10 + 6;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (firstInput ==NO && syosu == YES){
        count = count + 6*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 6;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 6*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
    
}

-(IBAction)push7:(id)sender{
    if (PLUS == YES){
    
    if(firstInput == YES && syosu ==NO){
        count =7;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput ==YES && syosu ==YES){
        count = 0.7;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        kaisu = kaisu+1;
        
    }else if (firstInput ==NO && syosu==NO){
        count = count*10 + 7;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (firstInput ==NO && syosu==YES){
        count = count+ 7*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 7;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 7*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
}

-(IBAction)push8:(id)sender{
    if (PLUS == YES){
    
    if(firstInput == YES && syosu ==NO){
        count =8;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput ==YES && syosu ==YES){
        count = 0.8;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        kaisu = kaisu +1;
        
    }else if (firstInput ==NO && syosu==NO){
        count = count*10 + 8;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (firstInput ==NO && syosu==YES){
        count = count+ 8*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 8;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 8*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
}


-(IBAction)push9:(id)sender{
    if (PLUS == YES){
    
    if(firstInput == YES && syosu ==NO){
        count =9;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        firstInput = FALSE;
        
    }else if(firstInput ==YES && syosu ==YES){
        count = 0.9;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        kaisu = kaisu +1;
        
    }else if (firstInput ==NO && syosu==NO){
        count = count*10 + 9;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (firstInput ==NO && syosu == YES){
        count = count+ 9*pow(0.1, kaisu);
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
    }
    }else if(PLUS ==NO){
        if (firstInput ==NO && syosu ==NO){
            count = count*10 - 9;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            
        }else if(firstInput ==NO && syosu ==YES){
            count = count - 9*pow(0.1, kaisu);
            kaisu = kaisu+1;
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
        }
    }
}

-(IBAction)push0:(id)sender{
    
    if(firstInput == YES ){
        return;
    }else if(firstInput == NO && syosu == NO){
        count = count*10 ;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
    }else if(firstInput == NO && syosu == YES){
        count = count +0;
        kaisu = kaisu +1;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
    }
}

-(IBAction)pushpercent:(id)sender{
    count = count/100;
    countLabelText = [NSString stringWithFormat:@"%.4f",count];
    [countlabel setText:countLabelText];
}


-(IBAction)pushpoint:(id)sender{
    //小数点のボタンを押した時のメソッド
   if (count==0) {
       //countが0の時
            countLabelText = [NSString stringWithFormat:@"0.0000"];
       //countには0.0000と表示させる
            [countlabel setText:countLabelText];
             syosu= YES;
       //syosu状態をYESとする
    }else{
        //countが0でない時
        syosu = YES;
        //syosu状態をYESとする
        }
    
}




-(IBAction)pushplus:(id)sender{
    //プラスボタンを押したときのメソッドを作る
    calcu = count;
    //変数calcuにcount代入する
    count = 0;
    //count＝0にする
    flag = 1;
    //プラスボタンが押されたときflag=1とする
    syosu =NO;
    kaisu=1;
    firstInput=YES;
}

//以下引き算・掛け算・割り算のボタンを押したときのメソッドは上記と同様である。

-(IBAction)pushminus:(id)sender{
    calcu = count;
    count = 0;
    flag = 2;
    syosu =NO;
    kaisu = 1;
    firstInput = YES;
   
}
-(IBAction)pushmalti:(id)sender{
    calcu = count;
    count = 0;
    flag = 3;
    syosu =NO;
    kaisu = 1;
    firstInput = YES;
   
}

-(IBAction)pushdevice:(id)sender{
    calcu = count;
    count = 0;
    flag = 4;
    syosu =NO;
    kaisu = 1;
    firstInput = YES;
    
}



-(IBAction)pushEqual:(id)sender{
    //イコールボタンを押したときのメソッドをつくる
    if(flag == 0){
        //もしflagが０であったら
        return;
       //何も起こらない
       
        
    }else if (flag == 1){
        //もしflag=1(プラス)であったら
    count = calcu + count;
        //calce+countを行う
    countLabelText = [NSString stringWithFormat:@"%.4f",count];
        //countLabeltextに計算したcountを代入する
    [countlabel setText:countLabelText];
        //countLabelの文字を更新する
        
        //以下引き算・掛け算の場合は同様である
    }else if(flag == 2){
        count = calcu - count;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (flag == 3){
        count = calcu * count;
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
      
        
    }else if (flag == 4){
        //もしflag=4（割り算）のとき
        if(count == 0){
            //もしcount=0であったら
            countLabelText = [NSString stringWithFormat:@"Error"];
            //countLabelTextには"error"と表示させる
            [countlabel setText:countLabelText];
            //countLabelの文字を更新する
            
        }else{
            //count=0でないとき
        count = calcu /count;
            //calcu割るcountをする
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
            //countLabelTextに計算したcountを代入する
        [countlabel setText:countLabelText];
            //countLabelの文字を代入する
            
        }
    }
}


-(IBAction)pushconvert:(id)sender{
    //符号変換ボタンを押した時
    if (count ==0){
        //countが0である時
        return;
        //何も起こらない
    }else if(PLUS == YES){
        //countが正の数のとき
    count = count*(-1);
        //count*(-1)をする（符号を負の数にする）
    countLabelText = [NSString stringWithFormat:@"%.4f",count];
    [countlabel setText:countLabelText];
        PLUS =NO;
    }else if(PLUS ==NO){
        count = count*(-1);
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        PLUS =YES;

    }
    
}


-(IBAction)pushclear:(id)sender{
    //clearボタンを押したときのメソッドをつくる
    count = 0.0000;
    //count=0にする（リセットする）
    countLabelText = [NSString stringWithFormat:@"%.4f",count];
    //countlabelTextにcount=0を代入する
    [countlabel setText:countLabelText];
    //countLabelの文字を更新する
    firstInput =YES;
    //firstInputの状態にする
    syosu =NO;
    kaisu =1;
    [self viewDidLoad];
     //状態を初期化する
}


-(IBAction)pushback:(id)sender{
    if(syosu ==NO ){
        //countが整数の時
        count = floor(count/10);
        //countを10で割って小数点以下の数字を切り捨てる
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        
    }else if (syosu ==YES){
        if(kaisu >= 2){
           //kaisuが２以上である時
        count = ( floor( count*pow(10, kaisu-2) ) )/pow(10, kaisu-2);
            //count*10の(回数-2)乗で小数点以下を切り捨てた数を10の(kaisu-2)乗で割る
        countLabelText = [NSString stringWithFormat:@"%.4f",count];
        [countlabel setText:countLabelText];
        kaisu = kaisu-1;
            //kaisuを-1する
        }else if (kaisu == 1){
            count = floor(count/10);
            countLabelText = [NSString stringWithFormat:@"%.4f",count];
            [countlabel setText:countLabelText];
            syosu =NO;
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end






