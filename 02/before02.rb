require 'benchmark'

Benchmark.bm 10 do |r|
  r.report "test" do
    (1000..9999).each do |i|
      a=["", "*"]
      b=[]
      b=i.to_s.split("")
    
      a.each do |j|
        a.each do |k|
          a.each do |l|
            c=j+k+l
            next if c==""  # 少なくとも一つ加減乗除                                                                    
            t = b[0]+j+b[1]+k+b[2]+l+b[3]
    
            next if(/[^0-9]0[0-9]/=~t)||(/[^0-9][0-9]00/=~t)
            next if /[0-9]\/0/=~t # 0で割るとき                                                                        
    
            if t =~ /([0-9]+?)\/([0-9]+?)/
              next if $1.to_i%$2.to_i !=0 # 割り算の箇所について、余りが0以外ならば、整数でない                        
            end
    
            next if eval(t)<=0 # 計算結果がマイナス、0のとき                                                           
            puts i if b==eval(t).to_s.split("").reverse
          end
        end
      end
    end
  end
end