
//------------------------------------------------------------------------------
// <auto-generated>
//    이 코드는 템플릿에서 생성되었습니다.
//
//    이 파일을 수동으로 변경하면 응용 프로그램에 예기치 않은 동작이 발생할 수 있습니다.
//    코드가 다시 생성되면 이 파일에 대한 수동 변경 사항을 덮어씁니다.
// </auto-generated>
//------------------------------------------------------------------------------


namespace MvcApplication5
{

using System;
    using System.Collections.Generic;
    
public partial class PRODUCT
{

    public PRODUCT()
    {

        this.PRODUCT_STOCK = new HashSet<PRODUCT_STOCK>();

    }


    public int PDT_ID { get; set; }

    public string PDT_NAME { get; set; }

    public string PDT_TYPE { get; set; }

    public string PDT_BRAND { get; set; }

    public Nullable<int> PDT_PRICE { get; set; }

    public Nullable<int> PDT_SALES { get; set; }

    public string PDT_MAIN_IMG_URL { get; set; }

    public Nullable<System.DateTime> PDT_REG_DTE { get; set; }

    public Nullable<int> PDT_REG_NUM { get; set; }

    public Nullable<System.DateTime> PDT_MOD_DTE { get; set; }

    public Nullable<int> PDT_MOD_NUM { get; set; }



    public virtual ICollection<PRODUCT_STOCK> PRODUCT_STOCK { get; set; }

}

}
