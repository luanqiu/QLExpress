
如果 (审批通过(经理,金额)){
   如果  (金额  大于 5000){  
      如果  (审批通过(总监,金额)){ 
         如果  (审批通过(财务,金额)){ 
            报销入账(金额) 
   }否则  { 
            打回修改(申请人) 
   } 
  }否则 { 
         打回修改(申请人) 
  } 
 }否则  { 
      如果  (审批通过(财务,金额)){ 
        报销入账(金额) 
      }否则 { 
         打回修改(申请人) 
      } 
   }
}否则 { 
   打回修改(申请人) 
}
打印("完成")